.class Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo;->topN(I)[Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo;


# direct methods
.method constructor <init>(Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo$1;->this$0:Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;)I
    .registers 3

    .line 25
    iget p0, p2, Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;->confidence:F

    iget p1, p1, Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;->confidence:F

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    cmpl-float p2, p0, p1

    if-lez p2, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    cmpg-float p0, p0, p1

    if-gez p0, :cond_12

    const/4 p0, -0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 22
    check-cast p1, Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;

    check-cast p2, Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;

    invoke-virtual {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo$1;->compare(Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;)I

    move-result p0

    return p0
.end method
