.class Lcom/transsion/camera/feature/setting/exposure/Exposure$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/exposure/Exposure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/exposure/Exposure;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 241
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 245
    invoke-static {}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; mLastFocusState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$fgetmLastFocusState(Lcom/transsion/camera/feature/setting/exposure/Exposure;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 246
    const-string v0, "key_reset_exposure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$fgetmIsProfessionalMode(Lcom/transsion/camera/feature/setting/exposure/Exposure;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$sfgetEXPOSURE_DEFAULT_VALUE()Landroid/util/Rational;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 252
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$fgetmAeLock(Lcom/transsion/camera/feature/setting/exposure/Exposure;)Z

    move-result v0

    if-eqz v0, :cond_56

    goto/16 :goto_eb

    .line 257
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_65

    goto/16 :goto_eb

    .line 262
    :cond_65
    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_ae

    .line 263
    const-string v0, "PASSIVE_SCAN"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "ACTIVE_SCAN"

    .line 264
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$fgetmLastFocusState(Lcom/transsion/camera/feature/setting/exposure/Exposure;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ACTIVE_FOCUSED"

    .line 265
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "PASSIVE_FOCUSED"

    if-eqz v0, :cond_94

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a8

    :cond_94
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$fgetmLastFocusState(Lcom/transsion/camera/feature/setting/exposure/Exposure;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "INACTIVE"

    .line 266
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a9

    :cond_a8
    move v2, v1

    .line 269
    :cond_a9
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {v0, p2}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$fputmLastFocusState(Lcom/transsion/camera/feature/setting/exposure/Exposure;Ljava/lang/String;)V

    .line 271
    :cond_ae
    const-string p2, "key_picture_size_state"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c0

    const-string p2, "key_video_quality_state"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bf

    goto :goto_c0

    :cond_bf
    move v1, v2

    .line 275
    :cond_c0
    :goto_c0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$fgetmIsProfessionalMode(Lcom/transsion/camera/feature/setting/exposure/Exposure;)Z

    move-result p1

    if-nez p1, :cond_eb

    if-eqz v1, :cond_eb

    invoke-static {}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$sfgetEXPOSURE_DEFAULT_VALUE()Landroid/util/Rational;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_eb

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$sfgetEXPOSURE_DEFAULT_VALUE()Landroid/util/Rational;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->onValueChanged(Ljava/lang/String;)V

    :cond_eb
    :goto_eb
    return-void
.end method
