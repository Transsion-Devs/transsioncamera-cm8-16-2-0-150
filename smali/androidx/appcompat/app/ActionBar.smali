.class public abstract Landroidx/appcompat/app/ActionBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBar$LayoutParams;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeOptionsMenu()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract collapseActionView()Z
.end method

.method public abstract dispatchMenuVisibilityChanged(Z)V
.end method

.method public abstract getDisplayOptions()I
.end method

.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public invalidateOptionsMenu()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method onDestroy()V
    .registers 1

    return-void
.end method

.method public abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public openOptionsMenu()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract setDefaultDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setShowHideAnimationEnabled(Z)V
.end method

.method public abstract setWindowTitle(Ljava/lang/CharSequence;)V
.end method

.method public startActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method
