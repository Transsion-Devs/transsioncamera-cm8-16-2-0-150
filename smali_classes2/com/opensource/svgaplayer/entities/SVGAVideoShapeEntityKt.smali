.class public abstract Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sharedPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->sharedPath:Landroid/graphics/Path;

    return-void
.end method

.method public static final getSharedPath()Landroid/graphics/Path;
    .registers 1

    .line 16
    sget-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->sharedPath:Landroid/graphics/Path;

    return-object v0
.end method
