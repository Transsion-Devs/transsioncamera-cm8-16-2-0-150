.class Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$2;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->unloadSoundEffectSource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;Ljava/lang/String;)V
    .registers 3

    .line 216
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$2;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 8

    .line 219
    invoke-static {}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[unloadSoundEffectSource] ++ "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$2;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmActionSoundLock(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 221
    :try_start_10
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$2;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmEffectSoundLoaded(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 222
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$2;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmEffectSampleIds(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)[I

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_25
    if-ge v4, v2, :cond_35

    aget v5, v1, v4

    .line 223
    iget-object v6, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$2;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    iget-object v6, v6, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-interface {v6, v5}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :catchall_33
    move-exception p0

    goto :goto_4a

    .line 226
    :cond_35
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$2;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v1, v3}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fputmEffectSoundLoaded(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;Z)V

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$2;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 228
    invoke-static {}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v1, "[unloadSoundEffectSource] -- "

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    monitor-exit v0

    return-void

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_10 .. :try_end_4b} :catchall_33

    throw p0
.end method
