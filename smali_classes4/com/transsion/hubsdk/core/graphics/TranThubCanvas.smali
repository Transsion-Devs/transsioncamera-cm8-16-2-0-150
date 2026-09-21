.class public Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/graphics/ITranCanvasAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubCanvas"


# instance fields
.field private mService:Lcom/transsion/hubsdk/graphics/TranCanvas;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/transsion/hubsdk/graphics/TranCanvas;

    invoke-direct {v0}, Lcom/transsion/hubsdk/graphics/TranCanvas;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->mService:Lcom/transsion/hubsdk/graphics/TranCanvas;

    return-void
.end method


# virtual methods
.method public clipRRect(Landroid/graphics/Canvas;FFFFFI)Z
    .registers 8

    .line 48
    iget-object p0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->mService:Lcom/transsion/hubsdk/graphics/TranCanvas;

    if-eqz p0, :cond_9

    .line 49
    invoke-virtual/range {p0 .. p7}, Lcom/transsion/hubsdk/graphics/TranCanvas;->clipRRect(Landroid/graphics/Canvas;FFFFFI)Z

    move-result p0

    return p0

    .line 51
    :cond_9
    sget-object p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->TAG:Ljava/lang/String;

    const-string p1, "cannot get core"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFILandroid/graphics/Paint;)V
    .registers 9

    .line 39
    iget-object p0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->mService:Lcom/transsion/hubsdk/graphics/TranCanvas;

    if-eqz p0, :cond_8

    .line 40
    invoke-virtual/range {p0 .. p8}, Lcom/transsion/hubsdk/graphics/TranCanvas;->drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFILandroid/graphics/Paint;)V

    return-void

    .line 42
    :cond_8
    sget-object p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->TAG:Ljava/lang/String;

    const-string p1, "cannot get core"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .registers 8

    .line 30
    iget-object p0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->mService:Lcom/transsion/hubsdk/graphics/TranCanvas;

    if-eqz p0, :cond_8

    .line 31
    invoke-virtual/range {p0 .. p7}, Lcom/transsion/hubsdk/graphics/TranCanvas;->drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    return-void

    .line 33
    :cond_8
    sget-object p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->TAG:Ljava/lang/String;

    const-string p1, "cannot get core"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public smoothcornerCubicEdgeEnabled()Z
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubCanvas;->mService:Lcom/transsion/hubsdk/graphics/TranCanvas;

    if-eqz p0, :cond_9

    .line 59
    invoke-virtual {p0}, Lcom/transsion/hubsdk/graphics/TranCanvas;->smoothcornerCubicEdgeEnabled()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
