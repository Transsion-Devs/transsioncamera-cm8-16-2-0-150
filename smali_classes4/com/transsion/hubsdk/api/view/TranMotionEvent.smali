.class public Lcom/transsion/hubsdk/api/view/TranMotionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FLAG_TOUCH_FROM_CONNECT:I = 0x80000

.field private static final FLAG_TOUCH_FROM_CONNECT_SHOWIM:I = 0x200000

.field private static final FLAG_TOUCH_FROM_PADEXTEND:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "TranMotionEvent"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospMotionEvent;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranMotionEventAdapter;
    .registers 3

    .line 40
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 41
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->TAG:Ljava/lang/String;

    const-string v0, "TranThubMotionEventManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;

    :cond_18
    return-object p1

    .line 44
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->TAG:Ljava/lang/String;

    const-string v0, "TranAospMotionEventManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospMotionEvent;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospMotionEvent;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospMotionEvent;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospMotionEvent;

    :cond_2b
    return-object p1
.end method

.method public getSourceConnectMotionFlag()I
    .registers 1

    const/high16 p0, 0x80000

    return p0
.end method

.method public getSourceConnectMotionPadExtendFlag()I
    .registers 1

    const/high16 p0, 0x400000

    return p0
.end method

.method public getSourceConnectMotionShowIMFlag()I
    .registers 1

    const/high16 p0, 0x200000

    return p0
.end method

.method public obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;
    .registers 37

    .line 99
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranMotionEventAdapter;

    move-result-object v1

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    invoke-interface/range {v1 .. v18}, Lcom/transsion/hubsdk/interfaces/view/ITranMotionEventAdapter;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public setTouchFromConnect(Landroid/view/InputEvent;Z)V
    .registers 4

    .line 62
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranMotionEventAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranMotionEventAdapter;->setTouchFromConnect(Landroid/view/InputEvent;Z)V

    return-void
.end method
