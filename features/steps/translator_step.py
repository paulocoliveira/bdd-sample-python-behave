from hamcrest import assert_that, is_, is_not,empty
from googletrans import Translator

@when(u'I translate "{word}" to "{language}"')
def step_impl(context, word, language):
    translator = Translator()
    try:
        context.translated = translator.translate(word, dest=language)
    except ValueError:
        context.translated = "Invalid Destination Language"

@then(u'I verify that the translation is "{result}"')
def step_impl(context, result):
    assert_that((context.translated.text.lower()), is_(result))

@then(u'I verify that the destination language does not exist')
def step_impl(context):
    assert_that((context.translated), is_("Invalid Destination Language"))