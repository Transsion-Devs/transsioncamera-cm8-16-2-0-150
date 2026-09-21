.class public Lcom/transsion/hubsdk/core/view/TranThubTranKeyEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranKeyEventAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubTranKeyEvent"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .registers 15

    .line 24
    invoke-static/range {p1 .. p14}, Lcom/transsion/hubsdk/hardware/input/TranKeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object p0

    return-object p0
.end method
