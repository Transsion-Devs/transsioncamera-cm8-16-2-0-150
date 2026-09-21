.class public final Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaging/libwatermark/ai_art/WatermarkExifBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AIArtBean"
.end annotation


# instance fields
.field private final templateName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "template_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;->templateName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 9
    :cond_5
    invoke-direct {p0, p1}, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;Ljava/lang/String;ILjava/lang/Object;)Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;->templateName:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;->copy(Ljava/lang/String;)Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;->templateName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;
    .registers 2

    new-instance p0, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;

    invoke-direct {p0, p1}, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;->templateName:Ljava/lang/String;

    iget-object p1, p1, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;->templateName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getTemplateName()Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;->templateName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;->templateName:Ljava/lang/String;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AIArtBean(templateName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/WatermarkExifBean$AIArtBean;->templateName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
