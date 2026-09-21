.class Lcom/transsion/camera/feature/setting/stblur/STBlur$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/stblur/STBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/stblur/STBlur;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/stblur/STBlur;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur$2;->this$0:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur$2;->this$0:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->setBWConvertValue(I)V

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur$2;->this$0:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->updateWarningType(I)V

    return-void
.end method
