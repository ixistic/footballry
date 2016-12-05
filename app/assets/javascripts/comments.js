$(document).ready(function(){
    tinyMCE.editors = [];
    tinyMCE.init({
        selector: "textarea.tinymce",
        menubar: false,
        toolbar: ["undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"],
        plugins: ['advlist autolink lists link image charmap print preview anchor',
            'searchreplace visualblocks code fullscreen',
            'insertdatetime media table contextmenu paste code']
    });
});

$(document).on('turbolinks:load', function(){
    tinyMCE.editors = [];
    tinyMCE.init({
        selector: "textarea.tinymce",
        menubar: false,
        toolbar: ["undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"],
        plugins: ['advlist autolink lists link image charmap print preview anchor',
            'searchreplace visualblocks code fullscreen',
            'insertdatetime media table contextmenu paste code']
    });
});

tinyMCE.editors = [];
tinyMCE.init({
    selector: "textarea.tinymce",
    menubar: false,
    toolbar: ["undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"],
    plugins: ['advlist autolink lists link image charmap print preview anchor',
        'searchreplace visualblocks code fullscreen',
        'insertdatetime media table contextmenu paste code']
});