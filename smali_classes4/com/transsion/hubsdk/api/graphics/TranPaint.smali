.class public Lcom/transsion/hubsdk/api/graphics/TranPaint;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranPaint"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospPaint;

.field private mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranPaintAdapter;
    .registers 3

    .line 17
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 18
    sget-object p1, Lcom/transsion/hubsdk/api/graphics/TranPaint;->TAG:Ljava/lang/String;

    const-string v0, "TranThubPaint"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranPaint;->mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubPaint;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/graphics/TranThubPaint;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/graphics/TranThubPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranPaint;->mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubPaint;

    :cond_18
    return-object p1

    .line 21
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/graphics/TranPaint;->TAG:Ljava/lang/String;

    const-string v0, "TranAospPaint"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranPaint;->mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospPaint;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/graphics/TranAospPaint;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/graphics/TranAospPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranPaint;->mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospPaint;

    :cond_2b
    return-object p1
.end method

.method public setUnionRenderEffect(Landroid/graphics/Paint;Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_c

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/graphics/TranPaint;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranPaintAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/graphics/ITranPaintAdapter;->setUnionRenderEffect(Landroid/graphics/Paint;Ljava/lang/Object;)V

    return-void

    .line 34
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "paint cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
