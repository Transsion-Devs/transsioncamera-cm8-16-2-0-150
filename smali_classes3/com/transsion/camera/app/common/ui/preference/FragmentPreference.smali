.class public abstract Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;
.super Landroid/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$PreferenceListener;,
        Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$FragmentListener;
    }
.end annotation


# instance fields
.field private mPreferenceListener:Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$PreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCustomFragment()Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onClick()V
    .registers 2

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;->mPreferenceListener:Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$PreferenceListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$PreferenceListener;->onPreferenceClick(Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$FragmentListener;)V

    return-void
.end method

.method public seCustomFragment(Landroid/app/Fragment;)V
    .registers 2

    .line 41
    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    return-void
.end method
