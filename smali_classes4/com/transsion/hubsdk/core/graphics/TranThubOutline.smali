.class public Lcom/transsion/hubsdk/core/graphics/TranThubOutline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/graphics/ITranOutlineAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubOutline"


# instance fields
.field private mService:Lcom/transsion/hubsdk/graphics/TranOutline;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/transsion/hubsdk/graphics/TranOutline;

    invoke-direct {v0}, Lcom/transsion/hubsdk/graphics/TranOutline;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubOutline;->mService:Lcom/transsion/hubsdk/graphics/TranOutline;

    return-void
.end method


# virtual methods
.method public setSmoothRoundRect(Landroid/graphics/Outline;IIIIFI)V
    .registers 8

    .line 27
    iget-object p0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubOutline;->mService:Lcom/transsion/hubsdk/graphics/TranOutline;

    if-eqz p0, :cond_8

    .line 28
    invoke-virtual/range {p0 .. p7}, Lcom/transsion/hubsdk/graphics/TranOutline;->setSmoothRoundRect(Landroid/graphics/Outline;IIIIFI)V

    return-void

    .line 30
    :cond_8
    sget-object p0, Lcom/transsion/hubsdk/core/graphics/TranThubOutline;->TAG:Ljava/lang/String;

    const-string p1, "cannot get core"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public smoothcornerCubicEdgeEnabled()Z
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubOutline;->mService:Lcom/transsion/hubsdk/graphics/TranOutline;

    if-eqz p0, :cond_9

    .line 37
    invoke-virtual {p0}, Lcom/transsion/hubsdk/graphics/TranOutline;->smoothcornerCubicEdgeEnabled()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
