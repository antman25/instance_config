from datetime import datetime
from flask import render_template, flash, redirect, url_for, request, g, \
    jsonify, current_app

#from app.main.forms import EditProfileForm, EmptyForm, PostForm, SearchForm, MessageForm
#from app.models import User, Post, Message, Notification
from app.main import bp

@bp.route('/', methods=['GET', 'POST'])
@bp.route('/main', methods=['GET', 'POST'])
def index():
    return render_template('index.html')
