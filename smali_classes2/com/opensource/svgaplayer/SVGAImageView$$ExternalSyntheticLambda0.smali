.class public final synthetic Lcom/opensource/svgaplayer/SVGAImageView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/opensource/svgaplayer/SVGAVideoEntity;

.field public final synthetic f$1:Lcom/opensource/svgaplayer/SVGAImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$$ExternalSyntheticLambda0;->f$0:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAImageView$$ExternalSyntheticLambda0;->f$1:Lcom/opensource/svgaplayer/SVGAImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$$ExternalSyntheticLambda0;->f$0:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView$$ExternalSyntheticLambda0;->f$1:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-static {v0, p0}, Lcom/opensource/svgaplayer/SVGAImageView;->$r8$lambda$rWyJXrlT18QcwgGTXhyrEinqLJw(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method
