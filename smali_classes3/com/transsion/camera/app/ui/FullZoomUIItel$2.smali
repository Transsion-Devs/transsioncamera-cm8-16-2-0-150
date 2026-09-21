.class Lcom/transsion/camera/app/ui/FullZoomUIItel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUIItel;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->-$$Nest$fgetmTranslateNormalY(Lcom/transsion/camera/app/ui/FullZoomUIItel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->translateWideCamera(IZ)V

    return-void
.end method
