.class public final Lcom/opensource/svgaplayer/SVGADynamicEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dynamicBoringLayoutText:Ljava/util/HashMap;

.field private dynamicDrawer:Ljava/util/HashMap;

.field private dynamicDrawerSized:Ljava/util/HashMap;

.field private dynamicHidden:Ljava/util/HashMap;

.field private dynamicIClickArea:Ljava/util/HashMap;

.field private dynamicImage:Ljava/util/HashMap;

.field private dynamicStaticLayoutText:Ljava/util/HashMap;

.field private dynamicText:Ljava/util/HashMap;

.field private dynamicTextPaint:Ljava/util/HashMap;

.field private isTextDirty:Z

.field private mClickMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicHidden:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicImage:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicText:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicTextPaint:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicStaticLayoutText:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicBoringLayoutText:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawer:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->mClickMap:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicIClickArea:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawerSized:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final getDynamicBoringLayoutText$com_opensource_svgaplayer()Ljava/util/HashMap;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicBoringLayoutText:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getDynamicDrawer$com_opensource_svgaplayer()Ljava/util/HashMap;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawer:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getDynamicDrawerSized$com_opensource_svgaplayer()Ljava/util/HashMap;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawerSized:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getDynamicHidden$com_opensource_svgaplayer()Ljava/util/HashMap;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicHidden:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getDynamicIClickArea$com_opensource_svgaplayer()Ljava/util/HashMap;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicIClickArea:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getDynamicImage$com_opensource_svgaplayer()Ljava/util/HashMap;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicImage:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getDynamicStaticLayoutText$com_opensource_svgaplayer()Ljava/util/HashMap;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicStaticLayoutText:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getDynamicText$com_opensource_svgaplayer()Ljava/util/HashMap;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicText:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getDynamicTextPaint$com_opensource_svgaplayer()Ljava/util/HashMap;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicTextPaint:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getMClickMap$com_opensource_svgaplayer()Ljava/util/HashMap;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->mClickMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final isTextDirty$com_opensource_svgaplayer()Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->isTextDirty:Z

    return p0
.end method

.method public final setTextDirty$com_opensource_svgaplayer(Z)V
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->isTextDirty:Z

    return-void
.end method
