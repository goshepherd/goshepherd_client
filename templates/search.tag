<search>
  <form onsubmit="{ exec }" class="pull-xs-right">
    <input name="fw" onkeyup"{ inputFw }" placeholder="Search..." class="form-control">
  </form>

  this.exec = (e) => {
    if(this.fw) {
      riot.route('/?fw=' + this.fw.value)
    }
  }

  function inputFw(e) {
    this.fw = e.target.value
  }
</search>

