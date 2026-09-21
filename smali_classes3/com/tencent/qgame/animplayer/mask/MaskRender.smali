.class public final Lcom/tencent/qgame/animplayer/mask/MaskRender;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/mask/MaskRender$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tencent/qgame/animplayer/mask/MaskRender$Companion;


# instance fields
.field private final maskAnimPlugin:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;

.field private maskArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

.field private maskShader:Lcom/tencent/qgame/animplayer/mask/MaskShader;

.field private vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/mask/MaskRender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/mask/MaskRender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->Companion:Lcom/tencent/qgame/animplayer/mask/MaskRender$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;)V
    .registers 3

    const-string v0, "maskAnimPlugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskAnimPlugin:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;

    new-instance p1, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {p1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    new-instance p1, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {p1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    return-void
.end method


# virtual methods
.method public final initMaskShader(Z)V
    .registers 3

    new-instance v0, Lcom/tencent/qgame/animplayer/mask/MaskShader;

    invoke-direct {v0, p1}, Lcom/tencent/qgame/animplayer/mask/MaskShader;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskShader:Lcom/tencent/qgame/animplayer/mask/MaskShader;

    const/16 p0, 0xb71

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public final renderFrame(Lcom/tencent/qgame/animplayer/AnimConfig;)V
    .registers 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskAnimPlugin:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->getPlayer()Lcom/tencent/qgame/animplayer/z1OoOif;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/z1OoOchar;->z1OoOint()I

    move-result v0

    if-gtz v0, :cond_1a

    goto :goto_22

    :cond_1a
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/mask/MaskRender;->maskShader:Lcom/tencent/qgame/animplayer/mask/MaskShader;

    if-nez p0, :cond_1f

    goto :goto_22

    :cond_1f
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    :cond_22
    :goto_22
    return-void
.end method
