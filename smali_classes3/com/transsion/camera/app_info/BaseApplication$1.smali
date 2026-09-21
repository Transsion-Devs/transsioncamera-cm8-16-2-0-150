.class Lcom/transsion/camera/app_info/BaseApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app_info/BaseApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app_info/BaseApplication;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app_info/BaseApplication;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/app_info/BaseApplication$1;->this$0:Lcom/transsion/camera/app_info/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app_info/BaseApplication$1;->this$0:Lcom/transsion/camera/app_info/BaseApplication;

    invoke-static {p0}, Lcom/transsion/camera/app_info/BaseApplication;->-$$Nest$fgetactivities(Lcom/transsion/camera/app_info/BaseApplication;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 69
    invoke-static {}, Lcom/transsion/camera/app_info/BaseApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityPaused() called with: activity = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app_info/BaseApplication$1;->this$0:Lcom/transsion/camera/app_info/BaseApplication;

    invoke-static {p0}, Lcom/transsion/camera/app_info/BaseApplication;->-$$Nest$fgetactivities(Lcom/transsion/camera/app_info/BaseApplication;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 62
    invoke-static {}, Lcom/transsion/camera/app_info/BaseApplication;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumed() called with: activity = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app_info/BaseApplication$1;->this$0:Lcom/transsion/camera/app_info/BaseApplication;

    invoke-static {v0}, Lcom/transsion/camera/app_info/BaseApplication;->-$$Nest$fgetactivities(Lcom/transsion/camera/app_info/BaseApplication;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app_info/BaseApplication$1;->this$0:Lcom/transsion/camera/app_info/BaseApplication;

    invoke-static {p0}, Lcom/transsion/camera/app_info/BaseApplication;->-$$Nest$fgetactivities(Lcom/transsion/camera/app_info/BaseApplication;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app_info/BaseApplication$1;->this$0:Lcom/transsion/camera/app_info/BaseApplication;

    invoke-static {p0}, Lcom/transsion/camera/app_info/BaseApplication;->-$$Nest$fgetactivities(Lcom/transsion/camera/app_info/BaseApplication;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
