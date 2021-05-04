"""Logged-in page routes."""
from flask import Blueprint, flash, redirect, render_template, url_for, request

# Blueprint Configuration
root_bp = Blueprint(
    'root_bp', __name__
)


@root_bp.route("/")
def root():
    """Root route"""
    return redirect(url_for('pages_bp.races'))


@root_bp.route("/healthz")
def healthz():
    """Health check"""
    return "OK"

