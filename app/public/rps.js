function getFieldValue(fieldId) { 
  // 'get field' is part of Semantics form behavior API
  return $('.ui.form').form('get field', fieldId).val();}
    function submitForm() {
    var formData = {
        field1: getFieldValue('spock-lizard')
    };

    $.ajax({ type: 'POST', url: '/start', data: formData, success: console.log("Sumitted!") });
   }
   $('.ui.form').form(validationRules, { onSuccess: submitForm });

   