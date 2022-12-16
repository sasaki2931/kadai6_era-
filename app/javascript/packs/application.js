

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import 'bootstrap';
import '../stylesheets/styles';
import './scripts';

Rails.start()
Turbolinks.start()
ActiveStorage.start()
