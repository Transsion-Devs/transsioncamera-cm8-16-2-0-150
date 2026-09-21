.class public final synthetic Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/opensource/svgaplayer/SVGAParser;

.field public final synthetic f$1:Ljava/io/InputStream;

.field public final synthetic f$2:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;ZLjava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$0:Lcom/opensource/svgaplayer/SVGAParser;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$1:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$2:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$4:Z

    iput-object p6, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$6:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$1:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$2:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$4:Z

    iget-object v5, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda5;->f$6:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    invoke-static/range {v0 .. v6}, Lcom/opensource/svgaplayer/SVGAParser;->$r8$lambda$hsyVdKpzfY_MlqOHz_TsfeF7k4o(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;ZLjava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    return-void
.end method
