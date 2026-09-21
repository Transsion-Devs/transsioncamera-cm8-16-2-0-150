.class public Lcom/ss/android/vesdk/filterparam/pub/VEStickerTemplateFilter;
.super Lcom/ss/android/vesdk/filterparam/pub/VEInfoStickerFilter;
.source "SourceFile"


# instance fields
.field public dependentResourceParam:Ljava/lang/String;

.field public json:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/pub/VEInfoStickerFilter;-><init>()V

    .line 10
    const-string v0, "default"

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerTemplateFilter;->dependentResourceParam:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEStickerTemplateFilter;->json:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;->StickerTemplate:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    return-void
.end method
