.class public Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranMotionEventAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubMotionEvent"


# instance fields
.field private mTranMotionEvent:Lcom/transsion/hubsdk/hardware/input/TranMotionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranInputManager()Lcom/transsion/hubsdk/hardware/input/TranMotionEvent;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;->mTranMotionEvent:Lcom/transsion/hubsdk/hardware/input/TranMotionEvent;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/transsion/hubsdk/hardware/input/TranMotionEvent;

    invoke-direct {v0}, Lcom/transsion/hubsdk/hardware/input/TranMotionEvent;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;->mTranMotionEvent:Lcom/transsion/hubsdk/hardware/input/TranMotionEvent;

    .line 32
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;->mTranMotionEvent:Lcom/transsion/hubsdk/hardware/input/TranMotionEvent;

    return-object p0
.end method


# virtual methods
.method public obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;
    .registers 18

    .line 39
    invoke-static/range {p1 .. p17}, Lcom/transsion/hubsdk/hardware/input/TranMotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public setTouchFromConnect(Landroid/view/InputEvent;Z)V
    .registers 3

    .line 25
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;->getTranInputManager()Lcom/transsion/hubsdk/hardware/input/TranMotionEvent;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/hardware/input/TranMotionEvent;->setTouchFromConnect(Landroid/view/InputEvent;Z)V

    return-void
.end method
