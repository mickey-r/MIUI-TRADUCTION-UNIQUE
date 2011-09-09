.class public Lcom/miui/compass/CompassActivity;
.super Landroid/app/Activity;
.source "CompassActivity.java"


# static fields
.field private static final COMPASS_CALIBRATION_FILE:Ljava/lang/String; = "/persist/compass_calibration.dat"


# instance fields
.field private final MAX_ROATE_DEGREE:F

.field mAngleLayout:Landroid/widget/LinearLayout;

.field private mAutoEnterCalibrateMode:Z

.field private mCalibrateMode:Z

.field private mChinease:Z

.field mCompassView:Landroid/view/View;

.field protected mCompassViewUpdater:Ljava/lang/Runnable;

.field private mDirection:F

.field mDirectionLayout:Landroid/widget/LinearLayout;

.field private mEnterCalibrateTime:J

.field mGuideView:Landroid/widget/ImageView;

.field protected final mHandler:Landroid/os/Handler;

.field private mInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mLastUnreliableTime:J

.field private mLastUpdateDirection:J

.field mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationProvider:Ljava/lang/String;

.field mLocationTextView:Landroid/widget/TextView;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

.field mPointer:Lcom/miui/compass/CompassView;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStopDrawing:Z

.field private mTargetDirection:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/miui/compass/CompassActivity;->MAX_ROATE_DEGREE:F

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/miui/compass/CompassActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/compass/CompassActivity$1;-><init>(Lcom/miui/compass/CompassActivity;)V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassViewUpdater:Ljava/lang/Runnable;

    .line 437
    new-instance v0, Lcom/miui/compass/CompassActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/compass/CompassActivity$3;-><init>(Lcom/miui/compass/CompassActivity;)V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 488
    new-instance v0, Lcom/miui/compass/CompassActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/compass/CompassActivity$4;-><init>(Lcom/miui/compass/CompassActivity;)V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/compass/CompassActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mCalibrateMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/compass/CompassActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/compass/CompassActivity;->mDirection:F

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/compass/CompassActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/miui/compass/CompassActivity;->mLastUnreliableTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/miui/compass/CompassActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/miui/compass/CompassActivity;->mLastUnreliableTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/miui/compass/CompassActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/compass/CompassActivity;->mDirection:F

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/compass/CompassActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationProvider:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/compass/CompassActivity;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/compass/CompassActivity;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/compass/CompassActivity;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/compass/CompassActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/compass/CompassActivity;->mTargetDirection:F

    return v0
.end method

.method static synthetic access$202(Lcom/miui/compass/CompassActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/compass/CompassActivity;->mTargetDirection:F

    return p1
.end method

.method static synthetic access$300(Lcom/miui/compass/CompassActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mStopDrawing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/miui/compass/CompassActivity;)Landroid/view/animation/AccelerateInterpolator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/compass/CompassActivity;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/compass/CompassActivity;->normalizeDegree(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/compass/CompassActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->updateDirection()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/compass/CompassActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/compass/CompassActivity;->exitCalibrateMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/compass/CompassActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mAutoEnterCalibrateMode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/miui/compass/CompassActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/compass/CompassActivity;->mAutoEnterCalibrateMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/compass/CompassActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->enterCalibrateMode()V

    return-void
.end method

.method private enterCalibrateMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 405
    sget-boolean v0, Landroid/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mCalibrateMode:Z

    if-nez v0, :cond_0

    .line 410
    iput-boolean v2, p0, Lcom/miui/compass/CompassActivity;->mCalibrateMode:Z

    .line 411
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mGuideView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->calibrateSensor(Landroid/hardware/Sensor;Z)Z

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/compass/CompassActivity;->mEnterCalibrateTime:J

    goto :goto_0
.end method

.method private exitCalibrateMode(Z)V
    .locals 6
    .parameter "showNotification"

    .prologue
    const/4 v5, 0x0

    .line 419
    sget-boolean v1, Landroid/os/Build;->IS_MIONE:Z

    if-nez v1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-boolean v1, p0, Lcom/miui/compass/CompassActivity;->mCalibrateMode:Z

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/compass/CompassActivity;->mEnterCalibrateTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v5}, Landroid/hardware/SensorManager;->calibrateSensor(Landroid/hardware/Sensor;Z)Z

    .line 425
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mCompassView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mGuideView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    if-eqz p1, :cond_2

    .line 428
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    .line 429
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 430
    const v1, 0x7f04000a

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 433
    .end local v0           #vibrator:Landroid/os/Vibrator;
    :cond_2
    iput-boolean v5, p0, Lcom/miui/compass/CompassActivity;->mCalibrateMode:Z

    goto :goto_0
.end method

.method private getLocationString(D)Ljava/lang/String;
    .locals 7
    .parameter "input"

    .prologue
    const-wide v5, 0x40ac200000000000L

    .line 343
    double-to-int v0, p1

    .line 344
    .local v0, du:I
    int-to-double v3, v0

    sub-double v3, p1, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    div-int/lit8 v1, v3, 0x3c

    .line 345
    .local v1, fen:I
    int-to-double v3, v0

    sub-double v3, p1, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    rem-int/lit8 v2, v3, 0x3c

    .line 346
    .local v2, miao:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getNumberImage(I)Landroid/widget/ImageView;
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, -0x2

    .line 273
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, image:Landroid/widget/ImageView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 276
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 308
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    return-object v0

    .line 278
    :pswitch_0
    const v2, 0x7f020010

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 281
    :pswitch_1
    const v2, 0x7f020011

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 284
    :pswitch_2
    const v2, 0x7f020012

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 287
    :pswitch_3
    const v2, 0x7f020013

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 290
    :pswitch_4
    const v2, 0x7f020014

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 293
    :pswitch_5
    const v2, 0x7f020015

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 296
    :pswitch_6
    const v2, 0x7f020016

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 299
    :pswitch_7
    const v2, 0x7f020017

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 302
    :pswitch_8
    const v2, 0x7f020018

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 305
    :pswitch_9
    const v2, 0x7f020019

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private hasCalibrated()Z
    .locals 2

    .prologue
    .line 484
    new-instance v0, Ljava/io/File;

    const-string v1, "/persist/compass_calibration.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 485
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private initResources()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 139
    iput v0, p0, Lcom/miui/compass/CompassActivity;->mDirection:F

    .line 140
    iput v0, p0, Lcom/miui/compass/CompassActivity;->mTargetDirection:F

    .line 141
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 142
    iput-boolean v4, p0, Lcom/miui/compass/CompassActivity;->mStopDrawing:Z

    .line 143
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mCalibrateMode:Z

    .line 145
    iput-boolean v4, p0, Lcom/miui/compass/CompassActivity;->mAutoEnterCalibrateMode:Z

    .line 146
    iput-wide v2, p0, Lcom/miui/compass/CompassActivity;->mEnterCalibrateTime:J

    .line 147
    iput-wide v2, p0, Lcom/miui/compass/CompassActivity;->mLastUnreliableTime:J

    .line 148
    iput-wide v2, p0, Lcom/miui/compass/CompassActivity;->mLastUpdateDirection:J

    .line 150
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassView:Landroid/view/View;

    .line 151
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mGuideView:Landroid/widget/ImageView;

    .line 152
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/compass/CompassView;

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mPointer:Lcom/miui/compass/CompassView;

    .line 153
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationTextView:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    .line 155
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mAngleLayout:Landroid/widget/LinearLayout;

    .line 157
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mPointer:Lcom/miui/compass/CompassView;

    iget-boolean v1, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    if-eqz v1, :cond_0

    const v1, 0x7f020007

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/compass/CompassView;->setImageResource(I)V

    .line 159
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mGuideView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    if-eqz v1, :cond_1

    const v1, 0x7f02000c

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    return-void

    .line 157
    :cond_0
    const v1, 0x7f020006

    goto :goto_0

    .line 159
    :cond_1
    const v1, 0x7f02000b

    goto :goto_1
.end method

.method private initServices()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 166
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/miui/compass/CompassActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 167
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 171
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/miui/compass/CompassActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 172
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 173
    .local v0, criteria:Landroid/location/Criteria;
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 174
    invoke-virtual {v0, v4}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 175
    invoke-virtual {v0, v4}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 176
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 177
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 178
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationProvider:Ljava/lang/String;

    .line 180
    return-void
.end method

.method private normalizeDegree(F)F
    .locals 2
    .parameter "degree"

    .prologue
    .line 480
    const/high16 v0, 0x4434

    add-float/2addr v0, p1

    const/high16 v1, 0x43b4

    rem-float/2addr v0, v1

    return v0
.end method

.method private updateDirection()V
    .locals 14

    .prologue
    const/4 v13, -0x2

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/miui/compass/CompassActivity;->mLastUpdateDirection:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x12c

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    .line 270
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/miui/compass/CompassActivity;->mLastUpdateDirection:J

    .line 188
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 191
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 192
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mAngleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, east:Landroid/widget/ImageView;
    const/4 v8, 0x0

    .line 196
    .local v8, west:Landroid/widget/ImageView;
    const/4 v7, 0x0

    .line 197
    .local v7, south:Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 198
    .local v5, north:Landroid/widget/ImageView;
    iget v9, p0, Lcom/miui/compass/CompassActivity;->mTargetDirection:F

    const/high16 v10, -0x4080

    mul-float/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/miui/compass/CompassActivity;->normalizeDegree(F)F

    move-result v1

    .line 199
    .local v1, direction:F
    const/high16 v9, 0x41b4

    cmpl-float v9, v1, v9

    if-lez v9, :cond_b

    const v9, 0x431d8000

    cmpg-float v9, v1, v9

    if-gez v9, :cond_b

    .line 201
    new-instance v3, Landroid/widget/ImageView;

    .end local v3           #east:Landroid/widget/ImageView;
    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 202
    .restart local v3       #east:Landroid/widget/ImageView;
    iget-boolean v9, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    if-eqz v9, :cond_a

    const v9, 0x7f02000a

    :goto_1
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    :cond_1
    :goto_2
    const/high16 v9, 0x42e1

    cmpl-float v9, v1, v9

    if-lez v9, :cond_e

    const v9, 0x43778000

    cmpg-float v9, v1, v9

    if-gez v9, :cond_e

    .line 213
    new-instance v7, Landroid/widget/ImageView;

    .end local v7           #south:Landroid/widget/ImageView;
    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 214
    .restart local v7       #south:Landroid/widget/ImageView;
    iget-boolean v9, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    if-eqz v9, :cond_d

    const v9, 0x7f02001c

    :goto_3
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    :cond_2
    :goto_4
    iget-boolean v9, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    if-eqz v9, :cond_11

    .line 225
    if-eqz v3, :cond_3

    .line 226
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    :cond_3
    if-eqz v8, :cond_4

    .line 229
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    :cond_4
    if-eqz v7, :cond_5

    .line 232
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    :cond_5
    if-eqz v5, :cond_6

    .line 235
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    :cond_6
    :goto_5
    float-to-int v2, v1

    .line 254
    .local v2, direction2:I
    const/4 v6, 0x0

    .line 255
    .local v6, show:Z
    const/16 v9, 0x64

    if-lt v2, v9, :cond_7

    .line 256
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mAngleLayout:Landroid/widget/LinearLayout;

    div-int/lit8 v10, v2, 0x64

    invoke-direct {p0, v10}, Lcom/miui/compass/CompassActivity;->getNumberImage(I)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    rem-int/lit8 v2, v2, 0x64

    .line 258
    const/4 v6, 0x1

    .line 260
    :cond_7
    const/16 v9, 0xa

    if-ge v2, v9, :cond_8

    if-eqz v6, :cond_9

    .line 261
    :cond_8
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mAngleLayout:Landroid/widget/LinearLayout;

    div-int/lit8 v10, v2, 0xa

    invoke-direct {p0, v10}, Lcom/miui/compass/CompassActivity;->getNumberImage(I)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    rem-int/lit8 v2, v2, 0xa

    .line 264
    :cond_9
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mAngleLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/miui/compass/CompassActivity;->getNumberImage(I)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 267
    .local v0, degreeImageView:Landroid/widget/ImageView;
    const v9, 0x7f020008

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mAngleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 202
    .end local v0           #degreeImageView:Landroid/widget/ImageView;
    .end local v2           #direction2:I
    .end local v6           #show:Z
    :cond_a
    const v9, 0x7f020009

    goto/16 :goto_1

    .line 204
    :cond_b
    const v9, 0x434a8000

    cmpl-float v9, v1, v9

    if-lez v9, :cond_1

    const v9, 0x43a8c000

    cmpg-float v9, v1, v9

    if-gez v9, :cond_1

    .line 206
    new-instance v8, Landroid/widget/ImageView;

    .end local v8           #west:Landroid/widget/ImageView;
    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 207
    .restart local v8       #west:Landroid/widget/ImageView;
    iget-boolean v9, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    if-eqz v9, :cond_c

    const v9, 0x7f02001e

    :goto_6
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 207
    :cond_c
    const v9, 0x7f02001d

    goto :goto_6

    .line 214
    :cond_d
    const v9, 0x7f02001b

    goto/16 :goto_3

    .line 216
    :cond_e
    float-to-double v9, v1

    const-wide v11, 0x4050e00000000000L

    cmpg-double v9, v9, v11

    if-ltz v9, :cond_f

    const v9, 0x43924000

    cmpl-float v9, v1, v9

    if-lez v9, :cond_2

    .line 218
    :cond_f
    new-instance v5, Landroid/widget/ImageView;

    .end local v5           #north:Landroid/widget/ImageView;
    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 219
    .restart local v5       #north:Landroid/widget/ImageView;
    iget-boolean v9, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    if-eqz v9, :cond_10

    const v9, 0x7f02000f

    :goto_7
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 219
    :cond_10
    const v9, 0x7f02000e

    goto :goto_7

    .line 239
    :cond_11
    if-eqz v7, :cond_12

    .line 240
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    :cond_12
    if-eqz v5, :cond_13

    .line 243
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    :cond_13
    if-eqz v3, :cond_14

    .line 246
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    :cond_14
    if-eqz v8, :cond_6

    .line 249
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 10
    .parameter "location"

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    iget-object v5, p0, Lcom/miui/compass/CompassActivity;->mLocationTextView:Landroid/widget/TextView;

    const v6, 0x7f040001

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 340
    :goto_0
    return-void

    .line 316
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 318
    .local v0, latitude:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 320
    .local v2, longitude:D
    const-wide/16 v5, 0x0

    cmpl-double v5, v0, v5

    if-ltz v5, :cond_1

    .line 321
    const v5, 0x7f040003

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/compass/CompassActivity;->getLocationString(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/miui/compass/CompassActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :goto_1
    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-wide/16 v5, 0x0

    cmpl-double v5, v2, v5

    if-ltz v5, :cond_2

    .line 331
    const v5, 0x7f040005

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, v2, v3}, Lcom/miui/compass/CompassActivity;->getLocationString(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/miui/compass/CompassActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :goto_2
    iget-object v5, p0, Lcom/miui/compass/CompassActivity;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 324
    :cond_1
    const v5, 0x7f040004

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/high16 v8, -0x4010

    mul-double/2addr v8, v0

    invoke-direct {p0, v8, v9}, Lcom/miui/compass/CompassActivity;->getLocationString(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/miui/compass/CompassActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 334
    :cond_2
    const v5, 0x7f040006

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/high16 v8, -0x4010

    mul-double/2addr v8, v2

    invoke-direct {p0, v8, v9}, Lcom/miui/compass/CompassActivity;->getLocationString(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/miui/compass/CompassActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 379
    sget-boolean v1, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/compass/CompassActivity;->mCalibrateMode:Z

    if-eqz v1, :cond_1

    .line 380
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->hasCalibrated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 383
    const v1, 0x7f040009

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 384
    const v1, 0x104000a

    new-instance v2, Lcom/miui/compass/CompassActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/compass/CompassActivity$2;-><init>(Lcom/miui/compass/CompassActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 402
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/compass/CompassActivity;->exitCalibrateMode(Z)V

    .line 397
    iput-boolean v2, p0, Lcom/miui/compass/CompassActivity;->mAutoEnterCalibrateMode:Z

    goto :goto_0

    .line 400
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->setContentView(I)V

    .line 103
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->initResources()V

    .line 104
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->initServices()V

    .line 105
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 374
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 369
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->enterCalibrateMode()V

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x7f050006
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mStopDrawing:Z

    .line 130
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationProvider:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 136
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 352
    sget-boolean v0, Landroid/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 361
    :goto_0
    return v0

    .line 356
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 357
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mCalibrateMode:Z

    if-nez v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/miui/compass/CompassActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 359
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 361
    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationProvider:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/compass/CompassActivity;->updateLocation(Landroid/location/Location;)V

    .line 113
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationProvider:Ljava/lang/String;

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/miui/compass/CompassActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mStopDrawing:Z

    .line 123
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mCompassViewUpdater:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationTextView:Landroid/widget/TextView;

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
