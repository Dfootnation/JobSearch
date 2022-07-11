from flask import (
    Blueprint, flash, g, redirect, render_template, request, url_for
)
from jobsearch.db import get_db

bp = Blueprint('jobs', __name__)

@bp.route('/', methods=['GET'])
def index():
    db = get_db()
    jobs = db.execute(
        'SELECT * FROM job'
    ).fetchall()
    return render_template('jobs/index.html', jobs=jobs, location='', skills='')

@bp.route('/', methods=['POST'])
def search():
    location = request.form['location']
    skills = request.form['skills']
    query = 'SELECT * FROM job'
    if location:
        query += " WHERE location LIKE '%%{}%%'".format(location)
    if skills:
        if location:
            query += ' AND '
        else:
            query += " WHERE "
        query += "skills like '%%{}%%'".format(skills)
    db = get_db()
    jobs = db.execute(query).fetchall()
    return render_template('jobs/index.html', jobs=jobs, location=location, skills=skills)

