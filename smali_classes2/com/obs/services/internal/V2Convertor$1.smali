.class Lcom/obs/services/internal/V2Convertor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/internal/V2Convertor;->transCompleteMultipartUpload(Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/obs/services/model/PartEtag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/internal/V2Convertor;


# direct methods
.method constructor <init>(Lcom/obs/services/internal/V2Convertor;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/obs/services/internal/V2Convertor$1;->this$0:Lcom/obs/services/internal/V2Convertor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/obs/services/model/PartEtag;Lcom/obs/services/model/PartEtag;)I
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-nez p1, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    if-nez p2, :cond_c

    const/4 p0, 0x1

    return p0

    .line 88
    :cond_c
    invoke-virtual {p1}, Lcom/obs/services/model/PartEtag;->getPartNumber()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2}, Lcom/obs/services/model/PartEtag;->getPartNumber()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 76
    check-cast p1, Lcom/obs/services/model/PartEtag;

    check-cast p2, Lcom/obs/services/model/PartEtag;

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/V2Convertor$1;->compare(Lcom/obs/services/model/PartEtag;Lcom/obs/services/model/PartEtag;)I

    move-result p0

    return p0
.end method
