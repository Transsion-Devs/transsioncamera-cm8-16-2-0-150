.class Lcom/transsion/camera/feature/setting/makeup/MuMonomer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/makeup/MuMonomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;)V
    .registers 2

    .line 376
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->-$$Nest$mrefreshToUI(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;I)V

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomer$2;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->updateWarningType(I)V

    return-void
.end method
