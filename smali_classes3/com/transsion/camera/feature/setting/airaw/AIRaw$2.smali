.class Lcom/transsion/camera/feature/setting/airaw/AIRaw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/airaw/AIRaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$2;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamIdCallback([I)V
    .registers 4

    if-eqz p1, :cond_54

    .line 247
    array-length v0, p1

    if-lez v0, :cond_54

    const/4 v0, 0x0

    .line 248
    aget p1, p1, v0

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$2;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->-$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)I

    move-result v0

    if-eq v0, p1, :cond_54

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$2;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->-$$Nest$fputmStreamId(Lcom/transsion/camera/feature/setting/airaw/AIRaw;I)V

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$2;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->access$300(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$2;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->getKey()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStreamIdCallback] mStreamId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/airaw/AIRaw$2;->this$0:Lcom/transsion/camera/feature/setting/airaw/AIRaw;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/airaw/AIRaw;->-$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/airaw/AIRaw;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", AIRAW_SUPPORT_CAMERA_IDS : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->AIRAW_SUPPORT_CAMERA_IDS:[I

    .line 253
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 252
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_54
    return-void
.end method
