.class public abstract Lcom/transsion/camera/app/QuickActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mSleepCameraActivityLive:Z

.field private static sResumeActivityNumber:I


# instance fields
.field private mIsTopResumedActivity:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainHandler:Landroid/os/Handler;

.field private mNeedWakeUpScreen:Z

.field private final mOnResumeTasks:Ljava/lang/Runnable;

.field private final mOnStopTasks:Ljava/lang/Runnable;

.field private mPermissionResumeExecuted:Z

.field private mRealScreenWidth:I

.field private mSetShowWhenLocked:Z

.field private mSkippedFirstOnResume:Z

.field protected mStartupOnCreate:Z

.field protected mSuperResumed:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmSkippedFirstOnResume(Lcom/transsion/camera/app/QuickActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSetShowWhenLocked(Lcom/transsion/camera/app/QuickActivity;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/QuickActivity;->mSetShowWhenLocked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSkippedFirstOnResume(Lcom/transsion/camera/app/QuickActivity;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mwakeUpScreen(Lcom/transsion/camera/app/QuickActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->wakeUpScreen()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 83
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QuickActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 138
    sput-boolean v0, Lcom/transsion/camera/app/QuickActivity;->mSleepCameraActivityLive:Z

    .line 337
    sput v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    .line 124
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mStartupOnCreate:Z

    const/4 v1, 0x0

    .line 129
    iput-object v1, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 132
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    const/4 v1, 0x1

    .line 134
    iput-boolean v1, p0, Lcom/transsion/camera/app/QuickActivity;->mIsTopResumedActivity:Z

    .line 136
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mNeedWakeUpScreen:Z

    .line 139
    iput v0, p0, Lcom/transsion/camera/app/QuickActivity;->mRealScreenWidth:I

    .line 140
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mSetShowWhenLocked:Z

    .line 146
    new-instance v0, Lcom/transsion/camera/app/QuickActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/QuickActivity$1;-><init>(Lcom/transsion/camera/app/QuickActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Lcom/transsion/camera/app/QuickActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/QuickActivity$2;-><init>(Lcom/transsion/camera/app/QuickActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    return-void
.end method

.method private static accumulateActiveActivity()V
    .registers 1

    .line 340
    sget v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    return-void
.end method

.method private static decrementActiveActivity()V
    .registers 1

    .line 344
    sget v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    return-void
.end method

.method private static hasActiveActivity()Z
    .registers 1

    .line 348
    sget v0, Lcom/transsion/camera/app/QuickActivity;->sResumeActivityNumber:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private isLockScreenStart()Z
    .registers 22

    move-object/from16 v0, p0

    .line 669
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 671
    invoke-virtual {v0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardSecure()Z

    move-result v2

    .line 672
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 673
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    const-string v7, ", source: "

    const-string v8, "isLockScreenStart action: "

    const-string v9, "shoulder_button_double_tap"

    const-string v10, "lockscreen_affordance"

    const-string v11, "ai_key_double_tap"

    const-string/jumbo v12, "underwater_volume_double_tap"

    const-string/jumbo v13, "volume_double_tap"

    const-string v15, "com.android.systemui.camera_launch_source"

    const-string v14, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    move/from16 v16, v4

    const/4 v4, 0x1

    if-le v5, v6, :cond_3a

    if-nez v16, :cond_40

    .line 674
    invoke-static {v1, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    goto :goto_40

    :cond_3a
    move-object/from16 v19, v10

    move-object/from16 v18, v13

    goto/16 :goto_142

    .line 675
    :cond_40
    :goto_40
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v15, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x4

    if-ne v6, v5, :cond_55

    .line 677
    iput-boolean v4, v0, Lcom/transsion/camera/app/QuickActivity;->mNeedWakeUpScreen:Z

    move-object/from16 v19, v10

    move-object v2, v13

    move-object/from16 v18, v2

    goto/16 :goto_11f

    :cond_55
    const/4 v6, 0x5

    .line 679
    const-string v15, " action: "

    const-string v4, " isKeyguardSecure: "

    move-object/from16 v18, v13

    const-string v13, "isLockScreenStart !isInteractive: "

    move-object/from16 v19, v10

    const-string v10, "power"

    if-ne v6, v5, :cond_9e

    .line 681
    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 682
    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    .line 683
    sget-object v10, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    move/from16 v20, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v13, v20, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v20, :cond_9b

    if-eqz v16, :cond_98

    if-nez v2, :cond_9b

    :cond_98
    const/4 v2, 0x1

    .line 685
    iput-boolean v2, v0, Lcom/transsion/camera/app/QuickActivity;->mNeedWakeUpScreen:Z

    :cond_9b
    move-object v2, v12

    goto/16 :goto_11f

    :cond_9e
    const/16 v6, 0x64

    if-ne v6, v5, :cond_db

    .line 689
    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 690
    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    .line 691
    sget-object v10, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    move/from16 v20, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v13, v20, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v20, :cond_d9

    if-eqz v16, :cond_d6

    if-nez v2, :cond_d9

    :cond_d6
    const/4 v2, 0x1

    .line 693
    iput-boolean v2, v0, Lcom/transsion/camera/app/QuickActivity;->mNeedWakeUpScreen:Z

    :cond_d9
    move-object v2, v11

    goto :goto_11f

    :cond_db
    const/4 v6, 0x3

    if-ne v6, v5, :cond_e1

    move-object/from16 v2, v19

    goto :goto_11f

    :cond_e1
    const/16 v6, 0x65

    if-ne v6, v5, :cond_11e

    .line 699
    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 700
    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    .line 701
    sget-object v10, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    move/from16 v20, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v13, v20, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v20, :cond_11c

    if-eqz v16, :cond_119

    if-nez v2, :cond_11c

    :cond_119
    const/4 v2, 0x1

    .line 703
    iput-boolean v2, v0, Lcom/transsion/camera/app/QuickActivity;->mNeedWakeUpScreen:Z

    :cond_11c
    move-object v2, v9

    goto :goto_11f

    :cond_11e
    const/4 v2, 0x0

    .line 706
    :goto_11f
    sget-object v4, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", sourceInt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_164

    .line 708
    :goto_142
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 709
    sget-object v4, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 712
    :goto_164
    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_176

    .line 713
    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_176

    .line 714
    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19c

    .line 715
    :cond_176
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "lock_screen_type"

    const/4 v6, -0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 716
    sget-object v4, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLockScreenStart lock_screen_type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_19c

    const/16 v17, 0x1

    return v17

    .line 722
    :cond_19c
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a8

    .line 723
    invoke-static {v1, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    :cond_1a8
    move-object/from16 v0, v19

    .line 724
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b8

    move-object/from16 v0, v18

    .line 725
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    :cond_1b8
    const/16 v17, 0x1

    goto :goto_1bd

    :cond_1bb
    const/4 v0, 0x0

    return v0

    :goto_1bd
    return v17
.end method

.method private isShortcut()Z
    .registers 3

    .line 585
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extras.IS_SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private logLifecycle(Ljava/lang/String;Z)V
    .registers 5

    if-eqz p2, :cond_5

    .line 572
    const-string p2, "START"

    goto :goto_7

    :cond_5
    const-string p2, "END"

    .line 573
    :goto_7
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 573
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setShowWhenLocked()V
    .registers 3

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_23

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 238
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setShowWhenLocked"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 239
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 240
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mSetShowWhenLocked:Z

    :cond_23
    return-void
.end method

.method private startWakeUpScreen()V
    .registers 5

    .line 401
    iget-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mNeedWakeUpScreen:Z

    if-eqz v0, :cond_24

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_24

    sget-boolean v0, Lcom/transsion/camera/app/QuickActivity;->mSleepCameraActivityLive:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mStartupOnCreate:Z

    if-eqz v0, :cond_24

    .line 402
    invoke-static {}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/SchedThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/QuickActivity$3;

    const-string v2, "WakeUpScreen"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/QuickActivity$3;-><init>(Lcom/transsion/camera/app/QuickActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/transsion/camera/utils/threads/SchedThreadPools;->schedule(Lcom/transsion/camera/utils/threads/WorkTask;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_24
    return-void
.end method

.method private wakeUpScreen()V
    .registers 6

    .line 412
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 413
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    const/4 v2, 0x0

    .line 414
    iput-boolean v2, p0, Lcom/transsion/camera/app/QuickActivity;->mNeedWakeUpScreen:Z

    .line 415
    sget-object v2, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wakeUpScreen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_3f

    .line 419
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    const v1, 0x10000006

    invoke-virtual {v0, v1, p0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    .line 420
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 421
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3f
    return-void
.end method


# virtual methods
.method protected getDisplayActivityType()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 6

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 208
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 209
    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 211
    :cond_12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 212
    iget p0, p0, Lcom/transsion/camera/app/QuickActivity;->mRealScreenWidth:I

    const/16 v2, 0x438

    const/16 v3, 0x168

    if-ne p0, v2, :cond_30

    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v4, 0x1e0

    if-eq v2, v4, :cond_30

    .line 213
    iput v4, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 214
    iput v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 215
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object v0

    :cond_30
    const/16 v2, 0x2d0

    if-ne p0, v2, :cond_46

    .line 216
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v4, 0x140

    if-eq v2, v4, :cond_46

    .line 217
    iput v4, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 218
    iput v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 219
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object v0

    :cond_46
    const/16 v2, 0x4c8

    if-ne p0, v2, :cond_5c

    .line 220
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v4, 0x221

    if-eq v2, v4, :cond_5c

    .line 221
    iput v4, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 222
    iput v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 223
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object v0

    :cond_5c
    const/16 v2, 0x4ec

    if-ne p0, v2, :cond_72

    .line 224
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v4, 0x230

    if-eq v2, v4, :cond_72

    .line 225
    iput v4, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 226
    iput v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 227
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object v0

    :cond_72
    const/16 v2, 0x4b8

    if-ne p0, v2, :cond_87

    .line 228
    iget p0, v1, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v2, 0x219

    if-eq p0, v2, :cond_87

    .line 229
    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 230
    iput v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 231
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_87
    return-object v0
.end method

.method public getScreenBrightnessManager()Lcom/transsion/camera/manager/ScreenBrightnessManager;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initWindowAttributesAndLayout()V
    .registers 12

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 246
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 247
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->isWcgSupported(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    .line 248
    invoke-virtual {v0, v1}, Landroid/view/Window;->setColorMode(I)V

    goto :goto_18

    .line 250
    :cond_15
    invoke-virtual {v0, v2}, Landroid/view/Window;->setColorMode(I)V

    .line 253
    :goto_18
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v3, 0x3

    .line 255
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 261
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v3

    .line 262
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    .line 263
    array-length v4, v3

    move v5, v2

    :goto_31
    if-ge v5, v4, :cond_68

    aget-object v6, v3, v5

    .line 264
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v7

    const/high16 v8, 0x42700000    # 60.0f

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v7, v7, v9

    if-gez v7, :cond_65

    .line 265
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v9

    mul-int/2addr v8, v9

    if-ne v7, v8, :cond_65

    .line 266
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    goto :goto_68

    :cond_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 271
    :cond_68
    :goto_68
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 272
    invoke-virtual {v0, v2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    return-void
.end method

.method protected isKeyguardLocked()Z
    .registers 2

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_a

    .line 579
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 581
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method protected isKeyguardSecure()Z
    .registers 2

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_a

    .line 590
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 592
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isTopResumedActivity()Z
    .registers 1

    .line 489
    iget-boolean p0, p0, Lcom/transsion/camera/app/QuickActivity;->mIsTopResumedActivity:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 522
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "super onConfigurationChanged, densityDpi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenWidthDp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenHeightDp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 525
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 285
    const-string v0, "onCreate"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 286
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/app/common/R$integer;->brand_theme:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 287
    sget-object v3, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate() brand_theme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ne v2, v1, :cond_32

    .line 289
    sget v2, Lcom/transsion/camera/app/common/R$style;->Theme_Camera_XOS:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->setTheme(I)V

    .line 290
    const-string v2, "onCreate() brand_theme setTheme done."

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_32
    const/4 v2, 0x0

    .line 292
    sput-boolean v2, Lcom/transsion/camera/app/QuickActivity;->mSleepCameraActivityLive:Z

    .line 293
    iput-boolean v1, p0, Lcom/transsion/camera/app/QuickActivity;->mStartupOnCreate:Z

    .line 294
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLowPlatformScreenOn:Z

    if-eqz v1, :cond_45

    .line 295
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->isLockScreenStart()Z

    .line 296
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->startWakeUpScreen()V

    .line 298
    :cond_45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 299
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->setShowWhenLocked()V

    .line 300
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    .line 302
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onPermissionCreateTasks(Landroid/os/Bundle;)V

    .line 303
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onDestroy()V
    .registers 5

    const/4 v0, 0x1

    .line 507
    const-string v1, "onDestroy"

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 508
    invoke-static {}, Lcom/transsion/camera/utils/StatusBarUtils;->enable()V

    const/4 v0, 0x0

    .line 509
    sput-boolean v0, Lcom/transsion/camera/app/QuickActivity;->mSleepCameraActivityLive:Z

    .line 510
    iget-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/app/QuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 511
    iget-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/app/QuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 512
    sget-object v2, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "need re execute onPermissionStopTasks"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionStopTasks()V

    .line 515
    :cond_27
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionDestroyTasks()V

    .line 516
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 517
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x14

    if-ne p1, v0, :cond_15

    goto :goto_1a

    .line 179
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x14

    if-ne p1, v0, :cond_15

    goto :goto_1a

    .line 191
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .registers 6

    const/4 v0, 0x1

    .line 196
    const-string v1, "onNewIntent"

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 197
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onNewIntentTasks(Landroid/content/Intent;)V

    .line 201
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->setShowWhenLocked()V

    const/4 p1, 0x0

    .line 202
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onNewIntentTasks(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method protected final onPause()V
    .registers 5

    const/4 v0, 0x1

    .line 427
    const-string v1, "onPause"

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 428
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPrePermissionPause()V

    const/4 v0, 0x0

    .line 429
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    .line 430
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mNeedWakeUpScreen:Z

    .line 431
    iget-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/app/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 436
    iget-boolean v2, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    if-nez v2, :cond_24

    .line 437
    sget-object v2, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "onPause --> onPauseTasks()"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionPauseTasks()V

    goto :goto_2b

    .line 440
    :cond_24
    iget-boolean v2, p0, Lcom/transsion/camera/app/QuickActivity;->mPermissionResumeExecuted:Z

    if-eqz v2, :cond_2b

    .line 441
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionPauseTasks()V

    .line 444
    :cond_2b
    :goto_2b
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mPermissionResumeExecuted:Z

    .line 445
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 446
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mStartupOnCreate:Z

    .line 447
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->decrementActiveActivity()V

    .line 448
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected abstract onPermissionCreateTasks(Landroid/os/Bundle;)V
.end method

.method protected abstract onPermissionDestroyTasks()V
.end method

.method protected abstract onPermissionOnPreCreatedTask()V
.end method

.method protected abstract onPermissionPauseTasks()V
.end method

.method protected abstract onPermissionRestartTasks()V
.end method

.method protected onPermissionResumeTasks()V
    .registers 2

    const/4 v0, 0x1

    .line 635
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mPermissionResumeExecuted:Z

    return-void
.end method

.method protected abstract onPermissionStartTasks()V
.end method

.method protected abstract onPermissionStopTasks()V
.end method

.method public onPreCreated()V
    .registers 3

    const/4 v0, 0x1

    .line 276
    const-string v1, "onPreCreated"

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 277
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/transsion/camera/app/QuickActivity;->mRealScreenWidth:I

    .line 278
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->initWindowAttributesAndLayout()V

    .line 279
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionOnPreCreatedTask()V

    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onPrePermissionPause()V
    .registers 1

    return-void
.end method

.method protected final onRestart()V
    .registers 3

    const/4 v0, 0x1

    .line 498
    const-string v1, "onRestart"

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 499
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 500
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionRestartTasks()V

    const/4 v0, 0x0

    .line 502
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onResume()V
    .registers 10

    .line 353
    const-string v0, "onResume"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 354
    iput-boolean v1, p0, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    .line 364
    iget-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/app/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    iget-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/app/QuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardLocked()Z

    move-result v2

    .line 368
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->isLockScreenStart()Z

    move-result v3

    .line 369
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->isShortcut()Z

    move-result v4

    .line 371
    sget-object v5, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume(): isKeyguardLocked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isLockScreenStart "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isShortcut "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v6, 0x0

    if-nez v3, :cond_55

    if-nez v2, :cond_55

    if-nez v4, :cond_55

    .line 373
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->hasActiveActivity()Z

    move-result v2

    if-eqz v2, :cond_94

    :cond_55
    iget-boolean v2, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    if-nez v2, :cond_94

    .line 375
    iput-boolean v1, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    .line 376
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardSecure()Z

    move-result v2

    if-nez v3, :cond_69

    if-nez v2, :cond_69

    if-eqz v4, :cond_66

    goto :goto_69

    :cond_66
    const-wide/16 v2, 0xf

    goto :goto_6b

    :cond_69
    :goto_69
    const-wide/16 v2, 0x1e

    .line 379
    :goto_6b
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->hasActiveActivity()Z

    move-result v7

    if-eqz v7, :cond_73

    const-wide/16 v2, 0x0

    .line 380
    :cond_73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResume() --> postDelayed(mOnResumeTasks,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 381
    iget-object v7, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/transsion/camera/app/QuickActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9e

    .line 383
    :cond_94
    const-string v2, "onResume --> onResumeTasks()"

    invoke-static {v5, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 385
    iput-boolean v6, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    .line 386
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionResumeTasks()V

    :goto_9e
    if-eqz v4, :cond_a8

    .line 389
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraBootMethod(I)V

    .line 391
    :cond_a8
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 392
    invoke-static {}, Lcom/transsion/camera/app/QuickActivity;->accumulateActiveActivity()V

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume mNeedWakeUpScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/QuickActivity;->mNeedWakeUpScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Build.VERSION.SDK_INT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " !mSleepCameraActivityLive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/transsion/camera/app/QuickActivity;->mSleepCameraActivityLive:Z

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->startWakeUpScreen()V

    .line 397
    invoke-direct {p0, v0, v6}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onStart()V
    .registers 6

    .line 308
    const-string v0, "onStart"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SleepCameraActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 310
    sput-boolean v1, Lcom/transsion/camera/app/QuickActivity;->mSleepCameraActivityLive:Z

    .line 312
    :cond_18
    sget-boolean v2, Lcom/transsion/camera/app/QuickActivity;->mSleepCameraActivityLive:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "isSecureCamera"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 313
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 315
    :cond_2c
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionStartTasks()V

    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 317
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 318
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 319
    sget v0, Lcom/transsion/camera/app/common/R$string;->no_support_split_screen:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 322
    const-string v0, "onStart need to be finished due to MultiWindow Mode"

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void

    .line 327
    :cond_54
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->isThunderbackWindow(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 328
    sget v0, Lcom/transsion/camera/app/common/R$string;->no_support_thunder_Window:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 331
    const-string v0, "onStart need to be finished due to ThunderbackWindow"

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void

    .line 334
    :cond_74
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final onStop()V
    .registers 7

    .line 453
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 454
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "changing configurations"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    .line 456
    const-string v1, "onStop"

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    .line 457
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;->isLockScreenStart()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    .line 462
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "onStop() --> postDelayed(onStopTasks,300)"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/app/QuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4b

    .line 466
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/app/QuickActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/app/QuickActivity;->mOnStopTasks:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4b

    .line 472
    :cond_3f
    sget-object v0, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "onStop --> onStopTasks()"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 473
    iput-boolean v2, p0, Lcom/transsion/camera/app/QuickActivity;->mSkippedFirstOnResume:Z

    .line 474
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->onPermissionStopTasks()V

    .line 477
    :goto_4b
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 478
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/QuickActivity;->logLifecycle(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .registers 2

    .line 483
    invoke-super {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    .line 484
    iput-boolean p1, p0, Lcom/transsion/camera/app/QuickActivity;->mIsTopResumedActivity:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7

    .line 530
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 531
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 533
    sget-object v1, Lcom/transsion/camera/app/QuickActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged hasFocus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isCamera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_7a

    if-eqz v0, :cond_7a

    .line 534
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v0, v2, :cond_7a

    .line 535
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardLocked()Z

    move-result v0

    .line 536
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardSecure()Z

    move-result v2

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowFocusChanged isKeyguardLocked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isKeyguardSecure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_6e

    if-nez v2, :cond_6e

    .line 539
    iget-object v2, p0, Lcom/transsion/camera/app/QuickActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v2, :cond_6e

    .line 540
    new-instance v0, Lcom/transsion/camera/app/QuickActivity$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/QuickActivity$4;-><init>(Lcom/transsion/camera/app/QuickActivity;)V

    invoke-virtual {v2, p0, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_7a

    :cond_6e
    if-nez v0, :cond_7a

    .line 563
    iget-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mSetShowWhenLocked:Z

    if-eqz v0, :cond_7a

    const/4 v0, 0x0

    .line 564
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 565
    iput-boolean v0, p0, Lcom/transsion/camera/app/QuickActivity;->mSetShowWhenLocked:Z

    .line 568
    :cond_7a
    :goto_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onWindowFocusChanged: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public provideKeyguardManager()Landroid/app/KeyguardManager;
    .registers 2

    .line 596
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method
