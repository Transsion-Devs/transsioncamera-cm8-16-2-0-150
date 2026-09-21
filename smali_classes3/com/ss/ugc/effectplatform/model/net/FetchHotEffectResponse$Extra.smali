.class public Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extra"
.end annotation


# instance fields
.field private rec_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;->rec_id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 68
    :cond_5
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRec_id()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;->rec_id:Ljava/lang/String;

    return-object p0
.end method

.method public setRec_id(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/FetchHotEffectResponse$Extra;->rec_id:Ljava/lang/String;

    return-void
.end method
