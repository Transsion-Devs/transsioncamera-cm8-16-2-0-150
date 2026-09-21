.class public Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;
.super Lcom/ss/android/vesdk/filterparam/pub/VEFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;
    }
.end annotation


# instance fields
.field public amazingEffectMode:Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

.field public effectEndOffset:J

.field public effectStartOffset:J

.field public flag:J

.field public param:Ljava/lang/String;

.field public renderIndex:J

.field public res:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 21
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;-><init>()V

    .line 10
    sget-object v0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;->Default:Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->amazingEffectMode:Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->effectEndOffset:J

    .line 12
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->effectStartOffset:J

    .line 13
    iput-wide v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->flag:J

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->param:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 15
    iput-wide v1, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->renderIndex:J

    .line 16
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;->res:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;->AmazingEffect:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/pub/VEFilter;->filterType:Lcom/ss/android/ttve/common/TEDefine$TEPublicFilter;

    return-void
.end method
