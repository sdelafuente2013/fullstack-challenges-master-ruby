const listItem = (content) => {
  // TODO: return the proper <li> HTML tag with its content (as a string)
  return `<li class="list-group-item">${content}</li>`;
};

const unorderedList = (items) => {
  return `<ul class="list-group">
            ${items.map(item => listItem(item)).join('')}
          </ul>`;
};

module.exports = { listItem, unorderedList };
