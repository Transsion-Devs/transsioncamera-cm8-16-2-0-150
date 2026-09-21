.class public final Landroidx/window/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static ActivityFilter:[I = null

.field public static ActivityFilter_activityAction:I = 0x0

.field public static ActivityFilter_activityName:I = 0x1

.field public static ActivityRule:[I = null

.field public static ActivityRule_alwaysExpand:I = 0x0

.field public static SplitPairFilter:[I = null

.field public static SplitPairFilter_primaryActivityName:I = 0x0

.field public static SplitPairFilter_secondaryActivityAction:I = 0x1

.field public static SplitPairFilter_secondaryActivityName:I = 0x2

.field public static SplitPairRule:[I = null

.field public static SplitPairRule_clearTop:I = 0x0

.field public static SplitPairRule_finishPrimaryWithSecondary:I = 0x1

.field public static SplitPairRule_finishSecondaryWithPrimary:I = 0x2

.field public static SplitPairRule_splitLayoutDirection:I = 0x3

.field public static SplitPairRule_splitMinSmallestWidth:I = 0x4

.field public static SplitPairRule_splitMinWidth:I = 0x5

.field public static SplitPairRule_splitRatio:I = 0x6

.field public static SplitPlaceholderRule:[I = null

.field public static SplitPlaceholderRule_finishPrimaryWithSecondary:I = 0x0

.field public static SplitPlaceholderRule_placeholderActivityName:I = 0x1

.field public static SplitPlaceholderRule_splitLayoutDirection:I = 0x2

.field public static SplitPlaceholderRule_splitMinSmallestWidth:I = 0x3

.field public static SplitPlaceholderRule_splitMinWidth:I = 0x4

.field public static SplitPlaceholderRule_splitRatio:I = 0x5

.field public static SplitPlaceholderRule_stickyPlaceholder:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const v0, 0x7f04003d

    const v1, 0x7f04003f

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/window/R$styleable;->ActivityFilter:[I

    const v0, 0x7f040048

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/window/R$styleable;->ActivityRule:[I

    const v0, 0x7f0404f3

    const v1, 0x7f0404f4

    const v2, 0x7f0404c5

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/window/R$styleable;->SplitPairFilter:[I

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_34

    sput-object v1, Landroidx/window/R$styleable;->SplitPairRule:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_46

    sput-object v0, Landroidx/window/R$styleable;->SplitPlaceholderRule:[I

    return-void

    :array_34
    .array-data 4
        0x7f04010a
        0x7f04020a
        0x7f04020b
        0x7f040546
        0x7f040547
        0x7f040548
        0x7f040549
    .end array-data

    :array_46
    .array-data 4
        0x7f04020a
        0x7f0404b2
        0x7f040546
        0x7f040547
        0x7f040548
        0x7f040549
        0x7f040561
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
