.class public final synthetic Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->$r8$lambda$keYDRbIKWPKxk2y_p5gmjgNTmFY(Landroid/view/View;Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
