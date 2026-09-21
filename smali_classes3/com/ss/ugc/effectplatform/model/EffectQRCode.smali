.class public Lcom/ss/ugc/effectplatform/model/EffectQRCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private qrCodeText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/model/EffectQRCode;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "qrCodeText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectQRCode;->qrCodeText:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 7
    const-string p1, ""

    :cond_6
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/model/EffectQRCode;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getQrCodeText()Ljava/lang/String;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/EffectQRCode;->qrCodeText:Ljava/lang/String;

    return-object p0
.end method

.method public setQrCodeText(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/EffectQRCode;->qrCodeText:Ljava/lang/String;

    return-void
.end method
