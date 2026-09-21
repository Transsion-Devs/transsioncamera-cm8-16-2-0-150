.class Lcom/transsion/camera/app/ui/view/ShutterButtonView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/ShutterButtonView;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/view/ShutterButtonView;Z)V
    .registers 3

    .line 276
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView$1;->val$pressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView$1;->this$0:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView$1;->val$pressed:Z

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->-$$Nest$mcallShutterButtonFocus(Lcom/transsion/camera/app/ui/view/ShutterButtonView;Z)V

    return-void
.end method
