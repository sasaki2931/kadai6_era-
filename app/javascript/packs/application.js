

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import 'bootstrap';
import './scripts';
import '../stylesheets/application';
import '../stylesheets/users';
import '../stylesheets/styles';

Rails.start()
Turbolinks.start()
ActiveStorage.start()
