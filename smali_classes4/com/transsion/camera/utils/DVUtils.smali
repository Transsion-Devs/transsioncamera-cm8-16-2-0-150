.class public abstract Lcom/transsion/camera/utils/DVUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static isRequestEnterDV(Landroid/content/Context;)Z
    .registers 4

    .line 20
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 21
    :cond_a
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_f

    return v1

    .line 22
    :cond_f
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_19

    return v1

    .line 24
    :cond_19
    const-string v2, "has_launch_dv_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_22

    return v1

    .line 25
    :cond_22
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_29

    return v1

    .line 28
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 29
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_38

    return v1

    .line 30
    :cond_38
    const-string v0, "com.transsion.camera.feature.enter_dv"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_3e} :catch_3f

    return p0

    :catch_3f
    return v1
.end method

.method public static markHasLaunchDVMode(Landroid/content/Context;)V
    .registers 3

    .line 36
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-nez v0, :cond_9

    goto :goto_16

    .line 37
    :cond_9
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_e

    goto :goto_16

    .line 38
    :cond_e
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_17

    :goto_16
    return-void

    .line 40
    :cond_17
    const-string v0, "has_launch_dv_mode"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method
