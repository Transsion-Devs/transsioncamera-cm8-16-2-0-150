.class Lcom/transsion/camera/feature/mode/video/VideoMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/media/ITextureHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setTextureUpdater(Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;)V
    .registers 2

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->-$$Nest$fputmTextureUpdater(Lcom/transsion/camera/feature/mode/video/VideoMode;Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;)V

    return-void
.end method
