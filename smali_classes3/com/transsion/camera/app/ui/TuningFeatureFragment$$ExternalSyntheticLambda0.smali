.class public final synthetic Lcom/transsion/camera/app/ui/TuningFeatureFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/TuningFeatureFragment$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/TuningFeatureFragment$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->$r8$lambda$u83gW38vn0TytFchFIS6Oh-SGCk(Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
