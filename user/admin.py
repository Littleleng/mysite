from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.contrib.auth.models import User
from .models import Profile

class ProfileInline(admin.StackedInline):
    model = Profile
    can_delete = False

class UserAdmin(BaseUserAdmin):
    inlines = (ProfileInline, )
    list_display = ('username','nickname','email','is_active','is_superuser')#展示用户权限及信息是否设置
    def nickname(self,obj):
        return obj.profile.nickname
    nickname.short_description = '昵称'

admin.site.unregister(User)
admin.site.register(User,UserAdmin)
@admin.register(Profile)
class ProfileAdmin(admin.ModelAdmin):
    list_display = ('user','nickname')#在模板内展示出相应的title