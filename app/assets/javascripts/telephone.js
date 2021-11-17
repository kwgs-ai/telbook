$(function () {
var methods = {
    number: function (value, element) { // メールアドレスの正規表現
      return this.optional(element) || /^[0-9\-()]*$/i.test(value);
    }
  }
  // メソッドの追加
  $.each(methods, function (key) {
    $.validator.addMethod(key, this);
  });
$("#new_telephone").validate({
    // ルール設定
    rules: {
        "telephone[number]": {
            required: true,
            number: true,// ニックネームの入力有無チェック
            maxlength: 20,
            minlength: 8

        },
    },
    // エラーメッセージの定義
    messages: {
        "telephone[number]": {
            required: "電話番号を入力してください",
            maxlength: "20文字以内で入力してください",
            minlength: "8文字以上入力してください",
            number: "不正な値です"
        },
    },
    errorClass: "invalid", // バリデーションNGの場合に追加するクラス名の指定
    errorElement: "p", // エラーメッセージの要素種類の指定
    validClass: "valid", // バリデーションOKの場合に追加するクラス名の指定
}).cancelSubmit = true;

$("#telephone_number").keyup(function () {
    $("#new_telephone").valid()

});

    $("#telephone_number").blur(function () {
        $("#new_telephone").valid()

    });
});