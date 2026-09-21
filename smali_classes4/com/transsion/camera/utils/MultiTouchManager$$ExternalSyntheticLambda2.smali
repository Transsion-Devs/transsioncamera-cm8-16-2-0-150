.class public final synthetic Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda2;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/utils/MultiTouchManager$$ExternalSyntheticLambda2;->f$0:Landroid/view/View;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/utils/MultiTouchManager;->$r8$lambda$JnKVxlcYAF8VRa8EtikfXdRuNT8(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
