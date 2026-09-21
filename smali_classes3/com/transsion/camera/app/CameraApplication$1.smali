.class Lcom/transsion/camera/app/CameraApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraApplication;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private flipSupportActivity(Landroid/app/Activity;)Z
    .registers 2

    .line 158
    instance-of p0, p1, Lcom/transsion/camera/app/QuickActivity;

    if-eqz p0, :cond_10

    .line 159
    check-cast p1, Lcom/transsion/camera/app/QuickActivity;

    .line 160
    invoke-virtual {p1}, Lcom/transsion/camera/app/QuickActivity;->getDisplayActivityType()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0

    .line 162
    :cond_10
    instance-of p0, p1, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;

    return p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 167
    invoke-static {}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityCreated, activity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5

    .line 223
    invoke-static {}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityDestroyed, activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mActivities.isEmpty(): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$fgetmActivities(Lcom/transsion/camera/app/CameraApplication;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$fputmAutoKillType(Lcom/transsion/camera/app/CameraApplication;I)V

    .line 225
    iget-object p1, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$mstopAutoFinishActivity(Lcom/transsion/camera/app/CameraApplication;)V

    .line 226
    iget-object p1, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$fgetmActivities(Lcom/transsion/camera/app/CameraApplication;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$mstartAutoKill(Lcom/transsion/camera/app/CameraApplication;)V

    :cond_46
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 193
    invoke-static {}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityPaused, activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$misMainActivity(Lcom/transsion/camera/app/CameraApplication;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/transsion/camera/app_info/BaseApplication;->mNeedRemoveFlashTag:Z

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$fputmExitTimestamp(Lcom/transsion/camera/app/CameraApplication;J)V

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$fgetmExitTimestamp(Lcom/transsion/camera/app/CameraApplication;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$msaveExitTimestamp(Lcom/transsion/camera/app/CameraApplication;J)V

    :cond_35
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    .line 136
    invoke-static {}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityPreCreated, activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    instance-of p2, p1, Lcom/transsion/camera/app/QuickActivity;

    if-eqz p2, :cond_22

    .line 139
    move-object p2, p1

    check-cast p2, Lcom/transsion/camera/app/QuickActivity;

    invoke-virtual {p2}, Lcom/transsion/camera/app/QuickActivity;->onPreCreated()V

    .line 142
    :cond_22
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/CustomConfigUtil;->reConfigOobeCountryCode()V

    .line 143
    iget-object p2, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$mremoveTagIfNeed(Lcom/transsion/camera/app/CameraApplication;Landroid/app/Activity;)V

    .line 144
    iget-object p2, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p2}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$mcancelResetFlashSnapLite(Lcom/transsion/camera/app/CameraApplication;)V

    .line 145
    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->screenFlip(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_42

    .line 146
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication$1;->flipSupportActivity(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_42

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 151
    :cond_42
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnablePreReadIOSize:I

    if-lez p0, :cond_59

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/transsion/camera/app/CameraActivity;

    if-ne p1, p2, :cond_59

    .line 153
    invoke-static {}, Lcom/transsion/camera/utils/manager/PreReadManager;->getInstance()Lcom/transsion/camera/utils/manager/PreReadManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/manager/PreReadManager;->doPreReadMaliSO(I)V

    :cond_59
    return-void
.end method

.method public onActivityPreResumed(Landroid/app/Activity;)V
    .registers 5

    .line 181
    invoke-static {}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityPreResumed, activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$mremoveTagIfNeed(Lcom/transsion/camera/app/CameraApplication;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 187
    invoke-static {}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumed, activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$mcancelResetFlashSnapLite(Lcom/transsion/camera/app/CameraApplication;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 218
    invoke-static {}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivitySaveInstanceState, activity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    .line 172
    invoke-static {}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStarted, activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$fputmAutoKillType(Lcom/transsion/camera/app/CameraApplication;I)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {v0}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$fgetmActivities(Lcom/transsion/camera/app/CameraApplication;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$mstopAutoFinishActivity(Lcom/transsion/camera/app/CameraApplication;)V

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$mstopAutoKill(Lcom/transsion/camera/app/CameraApplication;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5

    .line 203
    invoke-static {}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStopped, activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mActivities.isEmpty(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {v2}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$fgetmActivities(Lcom/transsion/camera/app/CameraApplication;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$fputmAutoKillType(Lcom/transsion/camera/app/CameraApplication;I)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {v0}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$fgetmActivities(Lcom/transsion/camera/app/CameraApplication;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.app.PortraitReviewActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 207
    invoke-static {}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onActivityStopped, review activity"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$mstartAutoFinishActivity(Lcom/transsion/camera/app/CameraApplication;Landroid/app/Activity;)V

    .line 210
    :cond_5f
    iget-object p1, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$fgetmActivities(Lcom/transsion/camera/app/CameraApplication;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_75

    .line 211
    iget-object p1, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p1}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$mstartAutoKill(Lcom/transsion/camera/app/CameraApplication;)V

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication$1;->this$0:Lcom/transsion/camera/app/CameraApplication;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraApplication;->-$$Nest$mresetFlashSnapLiteKey(Lcom/transsion/camera/app/CameraApplication;)V

    :cond_75
    return-void
.end method
