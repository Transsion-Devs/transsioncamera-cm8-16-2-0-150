.class Lcom/effectsar/labcv/effectsdk/BefC2Info$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/effectsar/labcv/effectsdk/BefC2Info;->topN(I)[Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/effectsar/labcv/effectsdk/BefC2Info;


# direct methods
.method constructor <init>(Lcom/effectsar/labcv/effectsdk/BefC2Info;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/BefC2Info$1;->this$0:Lcom/effectsar/labcv/effectsdk/BefC2Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;)I
    .registers 3

    .line 24
    iget p0, p2, Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->confidence:F

    iget p1, p1, Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->confidence:F

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

    .line 21
    check-cast p1, Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;

    check-cast p2, Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/BefC2Info$1;->compare(Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;Lcom/effectsar/labcv/effectsdk/BefC2Info$BefC2CategoryItem;)I

    move-result p0

    return p0
.end method
