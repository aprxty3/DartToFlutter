void main(List<String> args) {
  //Try On
  try {
    int result = 12 ~/ 0;
    print(result);
  } on IntegerDivisionByZeroException {
    print('tidak dapat dibagi dengan nol');
  }

//Try Catch
  try {
    int result = 12 ~/ 0;
    print(result);
  } catch (error) {
    print('Exception yang terjadi $error');
  }

//Try Catch Stack Trace
  try {
    int result = 12 ~/ 0;
    print(result);
  } catch (error, stackTrace) {
    print('Exception yang terjadi $error');
    print('Stack Trace \n $stackTrace');
  }

//Try Catch Finaly
  try {
    int result = 12 ~/ 0;
    print(result);
  } catch (error, stackTrace) {
    print('Exception yang terjadi $error');
  } finally {
    print('Ini adalah bagian finally dan akan selalu dieksekusi');
  }
}
