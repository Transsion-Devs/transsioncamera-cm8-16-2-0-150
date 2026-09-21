.class Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 218
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$3;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 221
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "screen flash time out!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$3;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->-$$Nest$mupdateScreenFlashState(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V

    return-void
.end method
