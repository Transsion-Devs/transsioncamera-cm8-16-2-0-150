.class public Lcom/ss/android/vesdk/filterparam/pub/VEInfoStickerFilter;
.super Lcom/ss/android/vesdk/filterparam/pub/VEFilter;
.source "SourceFile"


# instance fields
.field public isBuffered:Z

.field public param:[Ljava/lang/String;

.field public res:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/filterparam/pub/VEInfoStickerFilter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 23
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEInfoStickerFilter;->isBuffered:Z

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEInfoStickerFilter;->res:Ljava/lang/String;

    if-eqz p1, :cond_11

    .line 25
    sget-object p1, Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;->EmojiSticker:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    iput-object p1, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    return-void

    .line 27
    :cond_11
    sget-object p1, Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;->InfoSticker:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    iput-object p1, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    return-void
.end method
