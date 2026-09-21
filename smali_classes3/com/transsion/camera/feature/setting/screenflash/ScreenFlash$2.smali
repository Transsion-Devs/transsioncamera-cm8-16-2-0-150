.class Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleScreenFlashLedFlashNotSupport(Ljava/lang/String;)V
    .registers 6

    .line 141
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$misFlashRequired(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z

    move-result p1

    .line 143
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is flash required:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_3c

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$mupdateScreenFlashState(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    return-void

    .line 147
    :cond_2f
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$mupdateScreenFlashState(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    :cond_3c
    return-void
.end method

.method private handleScreenFlashLedFlashSupport(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 131
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    const-string p1, "auto"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$misFlashRequired(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z

    move-result p1

    .line 133
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is flash required: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_36

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$mupdateScreenFlashState(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    :cond_36
    return-void
.end method

.method private onTakePictureStartImpl()V
    .registers 6

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$misScreenFlashFireSupport(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 116
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "fire flash should in onFlashFire Callback"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    const-string v1, "key_flash"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$misLedFlashSupport(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 121
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen flash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " led flash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->handleScreenFlashLedFlashSupport(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_4c
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen flash is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->handleScreenFlashLedFlashNotSupport(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCaptureEnd()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureEnd()V

    return-void
.end method

.method public onCaptureStart()V
    .registers 3

    .line 103
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$mupdateCaptureState(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$mupdateScreenFlashState(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$mupdateFlashState(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V

    return-void
.end method

.method public takePictureEnd(Z)V
    .registers 2

    return-void
.end method

.method public takePictureStart()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$misScreenFlashSupport(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 92
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "screen flash is not support"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$mupdateCaptureState(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->processOnTakingPicture()V

    return-void
.end method
