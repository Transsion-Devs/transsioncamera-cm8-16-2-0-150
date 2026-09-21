.class Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 270
    const-string v0, "key_shutter_sound_update"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 271
    const-string p1, "shutter_sound_value_change"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7c

    const-string p1, "shutter_sound_value_ready"

    .line 272
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_7c

    .line 275
    :cond_19
    const-string p1, "sound_effect_default"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$mloadActionSound(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Ljava/lang/String;)V

    return-void

    .line 279
    :cond_29
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$mreleaseActionSound(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    .line 281
    :try_start_2e
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fputmShutterSoundAssetFileName(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_41

    .line 283
    :catch_36
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "new soundResId is not a string, use default"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    :goto_41
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmShutterSoundAssetFileName(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$mloadActionSound(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Ljava/lang/String;)V

    return-void

    .line 286
    :cond_4b
    const-string v0, "ai_raw_lite"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 287
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuperNight mode POST_ALGO_AI_RAW : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$1;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    check-cast p2, Ljava/lang/String;

    const-string p1, "off"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fputmPostAlgoOn(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Z)V

    :cond_7c
    :goto_7c
    return-void
.end method
