import flatpickr from 'flatpickr';

const startDateSelector = document.getElementById("start_date");
const endDateSelector = document.getElementById("end_date");

const initFlatPickr = () => {
    const startPicker = flatpickr(startDateSelector, {
        minDate: 'today',
        dateFormat: 'd-m-Y',
        onChange: function(selectedDates, selectedDate) {
          // DO SOMETHING
          console.log(selectedDate)
          if (selectedDate !== '"') {
            endDateSelector.classList.remove("disabled");
            endDateSelector.disabled = false;
            endPicker.set("minDate", selectedDate);
          }
        }
      })

      const endPicker = flatpickr(endDateSelector, {
        minDate: 'today',
        dateFormat: 'd-m-Y',
        onChange: function(selectedDates, selectedDate) {
          // DO SOMETHING
          
        }
      })
}

export { initFlatPickr };