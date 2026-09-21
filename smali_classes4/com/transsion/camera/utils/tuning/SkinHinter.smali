.class public Lcom/transsion/camera/utils/tuning/SkinHinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;


# static fields
.field public static final SKIN_TITLES:[Ljava/lang/String;

.field public static final SKIN_VALUES:[Ljava/lang/String;


# instance fields
.field private final mSpanBuilder:Landroid/text/SpannableStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 17
    const-string v0, "Brown"

    const-string v1, "B_SAsia"

    const-string v2, "Black"

    const-string v3, "White"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/tuning/SkinHinter;->SKIN_TITLES:[Ljava/lang/String;

    .line 18
    const-string v0, "brown"

    const-string v1, "B_southasia"

    const-string v2, "black"

    const-string v3, "white"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/tuning/SkinHinter;->SKIN_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/tuning/SkinHinter;->mSpanBuilder:Landroid/text/SpannableStringBuilder;

    return-void
.end method


# virtual methods
.method public getCurrentSkinTitle()Ljava/lang/String;
    .registers 2

    .line 29
    sget-object v0, Lcom/transsion/camera/utils/tuning/SkinHinter;->SKIN_VALUES:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/SkinHinter;->getCurrentSkinValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_11

    .line 32
    sget-object v0, Lcom/transsion/camera/utils/tuning/SkinHinter;->SKIN_TITLES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 34
    :cond_11
    const-string p0, "Unknown"

    return-object p0
.end method

.method public getCurrentSkinValue()Ljava/lang/String;
    .registers 2

    .line 24
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public printCurrentSkin()Ljava/lang/CharSequence;
    .registers 6

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/utils/tuning/SkinHinter;->mSpanBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/utils/tuning/SkinHinter;->mSpanBuilder:Landroid/text/SpannableStringBuilder;

    const-string v1, " SKIN: \t"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/SkinHinter;->getCurrentSkinTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/utils/tuning/SkinHinter;->mSpanBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/transsion/camera/utils/tuning/SkinHinter;->mSpanBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/high16 v3, -0x10000

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/SkinHinter;->mSpanBuilder:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public setCurrentSkin(Ljava/lang/String;)V
    .registers 2

    .line 50
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
