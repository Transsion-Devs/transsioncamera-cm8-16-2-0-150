.class Lcom/transsion/camera/feature/setting/hdr/Hdr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/hdr/Hdr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/hdr/Hdr;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 283
    invoke-static {}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStarted] +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->onPreviewStateChanged(Z)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 2

    .line 278
    invoke-static {}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "[onPreviewStopped] +"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
