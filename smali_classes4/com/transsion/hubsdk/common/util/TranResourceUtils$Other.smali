.class public Lcom/transsion/hubsdk/common/util/TranResourceUtils$Other;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/common/util/TranResourceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Other"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOthersId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 473
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
