module app.util.strings {
  export function trimLeft(str: String): string {
    return str.replace(/^\s+/, '');
  }

  export function trimRight(str: String): string {
    return str.replace(/\s+$/, '');
  }
}
